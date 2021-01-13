using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Telerik.Web.UI;
using System.Globalization;
using System.Data.SqlClient;

public partial class QRMS : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Show Error Label
        if (Request.QueryString["e"] == "true")
        {
            lblError.Visible = true;
        }

        //Default date for the calendar
        dtpDateScan.SelectedDate = DateTime.Now.Date;
        bool bError = false;

        //Check for postback
        if (IsPostBack)
        {
            //Form values
            string DateScan = dtpDateScan.ValidationDate;
            string DocNo = txtDocNo.Text;
            string DocType = ddlDocType.SelectedValue;
            string PlanLoc = txtPlantLoc.Text;
            string RCCN = txtRCCN.Text;
            string PartNo = txtPartNo.Text;
            string PoNo = txtPoNo.Text;
            string NoPages = txtNoPages.Text;
            string Model = txtModel.Text;
            string ChgLtr = txtChgLtr.Text;


            //SQL insert query
            string SQLInsertQuery = "INSERT INTO [dbo].[QRMS_BDS_SCM_MTR_HB_HOLDING] " +
            "([DATE_SCAN]" +
            ",[DOC_NO]" +
            ",[DOC_TYPE]" +
               ",[PLANT_LOC]" +
               ",[RCCN]" +
               ",[PART_NO]" +
               ",[PO_NO]" +
               ",[NO_PAGES]" +
               ",[MODEL]" +
               ",[CHG_LTR]) "+
            "VALUES " +
               "('" + DateScan +
               "','" + DocNo +
               "','" + DocType +
               "','" + PlanLoc + 
               "','" + RCCN +
               "','" + PartNo +
               "','" + PoNo +
               "','" + NoPages +
               "','" + Model +
               "','" + ChgLtr +
            ")' GO";


            //SQL Insert
            string connectionString = string.Empty;

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(SQLInsertQuery, connection);
                    command.Connection.Open();
                    command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                bError = true;
                string errorText = ex.Message;
            }

            //Reload the page
            if (bError)
            {
                Response.Redirect("QRMS.aspx?e=true");
            }
            else
            {
                Response.Redirect("QRMS.aspx");
            }
                
        }
    }
}
