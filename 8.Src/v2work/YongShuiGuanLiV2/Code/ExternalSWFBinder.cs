﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace YongShuiGuanLiV2
{
    /// <summary>
    /// 
    /// </summary>
    public class ExternalSWFBinder
    {
        /// <summary>
        /// 
        /// </summary>
        static public void Bind(OpenFlashChart.OpenFlashChartControl chartControl)
        {
            chartControl.ExternalSWFfile = "open-flash-chart-SimplifiedChinese.swf";
        }
    }
}
