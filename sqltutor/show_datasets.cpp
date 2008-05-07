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
 * $Id: show_datasets.cpp,v 1.1 2008/05/07 15:27:35 cepek Exp $ 
 */

#include <pqxx/pqxx>
#include "sqltutor.h"

using std::string;
using pqxx::result;
using pqxx::sql_error;


void SQLtutor::show_datasets()
{
  using namespace pqxx;
  connection  conn( db_connection );
  work   tran(conn, "transaction-show-datasets");
  result res(tran.exec(
                       "SELECT dataset, tabscount, ds_table, columns "
                       "  FROM datasets "
                       "       NATURAL JOIN "
                       "       (SELECT dataset, count(ds_table) as tabscount "
                       "          FROM datasets "
                       "         GROUP BY dataset) T "
                       " ORDER BY tabscount, dataset, ord; "
                       ));
  if (res.empty()) throw "...";

  form << "<table border='1' >"
       << "<tr><th> dataset</th><th>table</th><th>columns</th></tr>";

  int tabs = 0;
  for (result::const_iterator b=res.begin(), e=res.end(); b!=e; b++)
    {
      form << "<tr>";
      if (tabs == 0)
        {
          tabs = b[1].as(int());
          form << "<td  valign='top' rowspan='" + b[1].as(string()) + "'> "
               << b[0].as(string())
               << " </td>";
        }
      tabs--;
      form << "<td> " + b[2].as(string()) + " </td>"
           << "<td> " + b[3].as(string()) + " </td>"
           << "</tr>";
    }
  form << "</table>";
}
