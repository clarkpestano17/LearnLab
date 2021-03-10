using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnLab
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WorkErrorLBL.Text = "";
        }
        protected void CalculateWork_Click(object sender, EventArgs e)
        {
            int checkInput = 0;
            decimal finalAnswer = 0;
            WorkErrorLBL.Text = "";

            if (ForceTB.Text != "")
                checkInput += 1;
            if (DistanceTB.Text != "")
                checkInput += 1;
            if (WorkTB.Text != "")
                checkInput += 1;

            if (checkInput == 3)
                WorkErrorLBL.Text = "All field were provided!";
            else if (checkInput < 2)
                WorkErrorLBL.Text = "Insufficient information";
            else
            {
                decimal Force = ForceTB.Text == "" ? 0 : Convert.ToDecimal(ForceTB.Text);
                decimal Distance = DistanceTB.Text == "" ? 0 : Convert.ToDecimal(DistanceTB.Text);
                decimal Work = WorkTB.Text == "" ? 0 : Convert.ToDecimal(WorkTB.Text);

                if (Force != 0 && ForceDDL.SelectedValue != "N")
                    Force = ConvertUnit(Force, ForceDDL.SelectedValue);

                if (Distance != 0 && DistanceDDL.SelectedValue != "m")
                    Distance = ConvertUnit(Distance, DistanceDDL.SelectedValue);

                if (Work != 0 && WorkDDL.SelectedValue != "J")
                    Work = ConvertUnit(Work, WorkDDL.SelectedValue);

                if (Force == 0)
                {
                    finalAnswer = GetForce(Distance, Work);
                    if (ForceDDL.SelectedValue != "N")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, ForceDDL.SelectedValue);

                    ForceTB.Text = finalAnswer.ToString();
                }
                else if (Distance == 0)
                {
                    finalAnswer = GetDistance(Force, Work);
                    if (DistanceDDL.SelectedValue != "m")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, DistanceDDL.SelectedValue);

                    DistanceTB.Text = finalAnswer.ToString();
                }
                else
                {
                    finalAnswer = GetWork(Force, Distance);
                    if (WorkDDL.SelectedValue != "J")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, WorkDDL.SelectedValue);

                    WorkTB.Text = finalAnswer.ToString();
                }

            }


        }
        public decimal GetWork(decimal Force, decimal Distance)
        {
            decimal Result = 0;

            Result = Force * Distance;

            return Result;
        }
        public decimal GetForce(decimal Distance, decimal Work)
        {
            decimal Result = 0;

            Result = Work / Distance;

            return Result;
        }
        public decimal GetDistance(decimal Force, decimal Work)
        {
            decimal Result = 0;

            Result = Work / Force;

            return Result;
        }
        public decimal ConvertUnit(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {
                case "kN": Converted = value * (decimal)1000; break;
                case "MN": Converted = value * (decimal)1000000; break;
                case "mm": Converted = value / (decimal)1000; break;
                case "cm": Converted = value / (decimal)100; break;
                case "km": Converted = value * (decimal)1000; break;
                case "in": Converted = value / (decimal)39.37; break;
                case "ft": Converted = value / (decimal)3.281; break;
                case "mi": Converted = value * (decimal)1609.34; break;
                case "kJ": Converted = value * (decimal)1000; break;
                case "Wh": Converted = value * (decimal)3600; break;
                case "kWh": Converted = value * (decimal)3600000; break;
                default: break;
            }

            return Converted;
        }
        public decimal ConvertFinalAnswer(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {

                case "kN": Converted = value / (decimal)1000; break;
                case "MN": Converted = value / (decimal)1000000; break;
                case "mm": Converted = value * (decimal)1000; break;
                case "cm": Converted = value * (decimal)100; break;
                case "km": Converted = value / (decimal)1000; break;
                case "in": Converted = value * (decimal)39.37; break;
                case "ft": Converted = value * (decimal)3.281; break;
                case "mi": Converted = value / (decimal)1609.34; break;
                case "kJ": Converted = value / (decimal)1000; break;
                case "Wh": Converted = value / (decimal)3600; break;
                case "kWh": Converted = value / (decimal)3600000; break;
                default: break;
            }

            return Converted;
        }
    }
}