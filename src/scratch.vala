/***
  BEGIN LICENSE
	
  Copyright (C) 2011 Giulio Collura <random.cpp@gmail.com> 
  This program is free software: you can redistribute it and/or modify it	
  under the terms of the GNU Lesser General Public License version 3, as published	
  by the Free Software Foundation.
	
  This program is distributed in the hope that it will be useful, but	
  WITHOUT ANY WARRANTY; without even the implied warranties of	
  MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR	
  PURPOSE.  See the GNU General Public License for more details.
	
  You should have received a copy of the GNU General Public License along	
  with this program.  If not, see <http://www.gnu.org/licenses/>	
  
  END LICENSE	
***/


using Gtk;
using Gdk;

using Granite;

namespace Scratch {

    public class Scratch : Granite.Application {
    
        private MainWindow window = null;
        
        construct {
        
            build_data_dir = Constants.DATADIR;
			build_pkg_data_dir = Constants.PKGDATADIR;
			build_release_name = Constants.RELEASE_NAME;
			build_version = Constants.VERSION;
			build_version_info = Constants.VERSION_INFO;
			
            program_name = "Scratch";
		    exec_name = "scratch";
		    app_copyright = "GPLv3";
		    app_icon = "text-editor";
		    app_launcher = "scratch.desktop";
            application_id = "net.launchpad.scratch";
		    main_url = "https://launchpad.net/scratch";
		    bug_url = "https://bugs.launchpad.net/scratch";
		    help_url = "https://answers.launchpad.net/scratch";
		    translate_url = "https://translations.launchpad.net/scratch";
		    
		    about_authors = {"Mario Guerriero <mefrio.g@gmail.com>",
                             "Giulio Collura <random.cpp@gmail.com>"};
        					    
        	about_documenters = {"",""};
		    about_artists = {"Mario Guerriero <mefrio.g@gmail.com>"};
		    about_translators = "";
         
		
		}
		
		protected override void activate () {
			
			if (get_windows () != null) {
				// show window if app is already open
				window.present (); 

			} else {
			    
			    // if not, create a new one.
			    window = new MainWindow ();
			    window.set_application (this);
                window.create_window();
			    window.connect_signals();

			    window.show_all ();
			    
			}
		}
		
		public static int main (string[] args) {
		
		    return new Scratch ().run (args);
		    
        }
    }
}
