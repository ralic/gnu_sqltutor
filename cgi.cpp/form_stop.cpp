/* 
   This file is part of GNU Sqltutor
   Copyright (C) 2008  Free Software Foundation, Inc.
   Contributed by Ales Cepek <cepek@gnu.org>
 
   GNU Sqltutor is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   GNU Sqltutor is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with GNU Sqltutor.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <pqxx/pqxx>
#include "sqltutor.h"


void SQLtutor::form_stop()
{
  using namespace pqxx;
  using std::string;

  try
    {
      connection conn( db_connection );
      work   tran(conn, "form_stop");
      set_schema(tran);

      {
        string time =
          "SELECT cast( ("
          "   (SELECT max(time) FROM sessions_questions "
          "                          WHERE session_id=" + session_id + ") - "
          "   (SELECT start     FROM sessions "
          "                          WHERE session_id=" + session_id +") )"
          " AS interval(0) ), localtime(0) ";
        result res(tran.exec(time));


        string hd1; 
        hd1 += test_finished
          + "&nbsp;&nbsp;";
        if (!all_qasked.empty())
          {
            hd1 += t_stopped_done + "&nbsp;&nbsp; ";
            form << InputHidden("all_qasked" ).value( all_qasked  );
          }
        hd1 += res.begin()[0].as(string())
          + "&nbsp;&nbsp; ("
          + t_session
          + session_id
          + ")";

        Table headings(2, "width='100%'");
        headings.td("align='left'");
        headings.td("align='right'");
        headings << hd1
                 << res.begin()[1].as(string());

        form << (Par() << headings);
      }

      string query = "SELECT * FROM sqltutor.evaluation(" 
	+ session_id + ")";

      result res(tran.exec( query ));
      result::const_iterator r=res.begin(), e=res.end();
      if (r != e)
        {
	  int evaluation    = r["ev_evaluation"].as(int());
          int total         = r["ev_total"     ].as(int());
          int correct       = r["ev_correct"   ].as(int());
          int points        = r["ev_points"    ].as(int());
          string points_min = r["ev_points_min"].as(string());
          string points_max = r["ev_points_max"].as(string());
          string dataset    = r["ev_dataset"   ].as(string());
          int    help       = r["ev_help"      ].as(int());
	  string login      = r["ev_login"     ].as(string());

          if (points_min == "0") points_min.clear();
          if (points_max == "0") points_max.clear();
          bool pars = !points_min.empty() || 
                      !points_max.empty() || 
                      !dataset.empty();
          string style;
          if (help || pars)   style = "style='color:red'";
	  if (!login.empty()) form << (Par() << login);

	  Table eval(3, style);
	  eval.td("align='left'");
	  eval.td("align='left'");
	  eval.td("align='right'");
	  const string sep = ":";
	  
          eval << t_nmbr_questions << sep << total
	       << t_nmbr_cor_answs << sep << correct
               << t_total_points   << sep << points
               << t_evaluation     << sep << evaluation;

          if (pars) eval << t_points_min << sep << points_min
			 << t_points_max << sep << points_max
			 << t_dataset    << sep << dataset;

	  form << eval;
        }

      Table tstop(2,  "width='100%'");
      tstop.td("align='left'");
      tstop.td("align='right'");
      tstop << InputSubmit("next").value( new_test )
            << InputSubmit("state").value( reload_page );
      Par pstop;
      pstop << tstop;
      form  << InputHidden("session_id").value(session_id) << pstop;
      form  << InputHidden("hash").value(hash);

      display_answers(form, tran, session_id);
  
      {
        string close = 
          "UPDATE sessions SET is_open = 0 "
          " WHERE session_id = " + session_id +
          "   AND is_open = 1 "
          "   AND '" +  CGI::map["hash"] + "' = md5(cast(start AS text));";
        
        result res(tran.exec(close));
        tran.commit();
      }

      CGI::map.clear();
      CGI::map["state"] = init_state;
    }
  catch (sql_error s)
    {
      form << s.what();
    }
  catch (...)
    {
      throw;
    }
}



