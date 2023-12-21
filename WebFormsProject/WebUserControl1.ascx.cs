﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsProject
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        private string _header;
        public string Header
        {
            get { return _header; }
            set { _header = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = _header;
        }
    }
}