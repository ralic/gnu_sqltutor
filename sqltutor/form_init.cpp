/* 
   This file is a part of SQLtutor
   Copyright (C) 2008  Ales Cepek <cepek@gnu.org>
 
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/* 
 * $Id: form_init.cpp,v 1.1 2008/05/07 15:27:34 cepek Exp $ 
 */

#include <pqxx/pqxx>
#include "cgi.h"
#include "sqltutor.h"

using std::string;


namespace
{
  string emptyrow() { return "<tr><td>&nbsp;</td></tr>";     }
  string emptycol() { return "<td>&nbsp;&nbsp;&nbsp;</td>"; }
  
  bool number(string s)
  {
    if (s.empty()) return true;
    
    string::const_iterator b=s.begin(), e=s.end();
    while (b != e && isspace(*b)) b++;
    
    int count = 0;
    while (b != e)
      {
        if (!isdigit(*b)) return false;
        count++;
        b++;
      }
    if (count == 0 || count > 5) return false;  // number too big
    
    while (b != e)
      {
        if (!isspace(*b)) return false;
        b++;
      }
    
    return true;
  }

  void append(string& atr, string& val, string patr, string pval, string ap="")
  {
    bool empty = true;
    for (string::const_iterator b=pval.begin(), e=pval.end(); b!=e; ++b)
      if (!std::isspace(*b))
        {
          empty = false;
          break;
        }
    if (empty) return;

    atr += patr + ",";
    val += ap + pval + ap + ",";
  }
}


void SQLtutor::form_init()
{
  const string state = CGI::map["state"];
  const string user  = CGI::map["user"];
  
  bool   error = false;
  string pmin  = CGI::map["points_min"];
  string pmax  = CGI::map["points_max"];
  
  if (!number(pmin))
    {
      error = true;
      form << t_bad_value_min << ": " << pmin << " <br/>";
    }
  if (!number(pmax))
    {
      error = true;
      form << t_bad_value_max << ": " << pmax << " <br/>";
    }
  
  if (error)
    {
      CGI::map["state"] =  init_state;
      CGI::map["user"]  = "";
      
      form << "<br/>";
      form_init();
      return;
    }
  
  if (state == init_continue)
    try 
      {
        const string help =  CGI::map["help"];
        string atr = "INSERT INTO sessions (";
        string val = "time) VALUES (";
        
        append(atr, val, "points_min", CGI::map["points_min"]);
        append(atr, val, "points_max", CGI::map["points_max"]);
        append(atr, val, "help",       help);
        append(atr, val, "login",      CGI::map["user"],     "'");
        append(atr, val, "password",   CGI::map["password"], "'");
        append(atr, val, "dataset",    CGI::map["dataset"],  "'");
        append(atr, val, "host", CGI::getenv("REMOTE_ADDR"), "'");
        
        using namespace pqxx;
        connection  conn( db_connection );
        work   tran(conn, "transaction-form-init-sessions");
        result res1(tran.exec(atr + val + "now());"));
        result res2(tran.exec("SELECT lastval();"));
        result::const_iterator q = res2.begin();
        if (q == res2.end()) throw "...";
        string session_id  = q[0].as(string());
        tran.commit();
        
        CGI::map.clear();
        CGI::map["session_id"] = session_id;
        CGI::map["state"]      = main_next;
        CGI::map["help"]       = help;
        return form_main();
      }
    catch (pqxx::sql_error s) 
      {
        form << s.what() << "<br/><br/>";
        form_stop();
        return;
      }
  
  
  form << "<table>";
  form << "<tr>"
       << "<td>" + t_user + "&nbsp;</td>" 
       << "<td>" 
       << Input().type("text").name("user").value("guest").disabled()
       << "</td>"
       << emptycol()
       << "<td>" + t_password + "&nbsp;</td>"
       << "<td>"
       << Input().type("password").name("password").value("").disabled()
       << "</td>"
       << "</tr>";
  form << emptyrow();
  form << "<tr>"
       << "<td>" + t_points_min + "&nbsp;</td>"
       << "<td>"
       << Input().type("text").name("points_min")
       << "</td>"
       << emptycol()
       << "<td>" + t_points_max + "&nbsp;</td>" 
       << "<td>"
       << Input().type("text").name("points_max")
       << "</td>"
       << "</tr>";
  form << "<tr>"
       << "<td>" + t_dataset + "&nbsp;</td>"
       << "<td>"
       << Input().type("text").name("dataset") 
       << "</td>" 
       << emptycol()
       << "<td>" + t_help + "&nbsp;</td>"
       << "<td>"
       << Input().type("checkbox").name("help").value("true")
       << "</td>"
       << "</tr>";
  form << emptyrow();
  form << "</table>";

  form << "<p>";
  form << Input().type("submit").name("state").value(init_continue)
       << button_sep()
       << Input().type("submit").name("state").value(init_datasets);

  if (state == init_datasets)
    {
      show_datasets();
    }

  form << "</p>";
}
