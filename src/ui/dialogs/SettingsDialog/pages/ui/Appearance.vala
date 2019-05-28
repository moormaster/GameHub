/*
This file is part of GameHub.
Copyright (C) 2018-2019 Anatoliy Kashkin

GameHub is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

GameHub is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GameHub.  If not, see <https://www.gnu.org/licenses/>.
*/

using Gtk;
using Granite;
using GameHub.Utils;

namespace GameHub.UI.Dialogs.SettingsDialog.Pages.UI
{
	public class Appearance: SettingsDialogPage
	{
		public Appearance(SettingsDialog dlg)
		{
			Object(
				dialog: dlg,
				header: _("Interface"),
				title: _("Appearance"),
				status: _("General interface settings"),
				icon_name: "preferences-desktop"
			);
		}

		construct
		{
			var ui = Settings.UI.get_instance();

			add_switch(_("Dark theme"), ui.dark_theme, v => { ui.dark_theme = v; });
			add_switch(_("Symbolic icons"), ui.symbolic_icons, v => { ui.symbolic_icons = v; });

			add_separator();

			add_switch(_("Compact list"), ui.compact_list, v => { ui.compact_list = v; });
			add_switch(_("Show platform icons in grid view"), ui.show_grid_icons, v => { ui.show_grid_icons = v; });
		}
	}
}
