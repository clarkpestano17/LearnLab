using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnLab
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VelocityErrorLBL.Text = "";
        }
        protected void CalculateVelocity_Click(object sender, EventArgs e)
        {
            int checkInput = 0;
            decimal finalAnswer = 0;
            VelocityErrorLBL.Text = "";

            if (DistanceTB.Text != "")
                checkInput += 1;
            if (TimeTB.Text != "")
                checkInput += 1;
            if (VelocityTB.Text != "")
                checkInput += 1;

            if (checkInput == 3)
                VelocityErrorLBL.Text = "All field were provided!";
            else if (checkInput < 2)
                VelocityErrorLBL.Text = "Insufficient information";
            else
            {
                decimal Distance = DistanceTB.Text == "" ? 0 : Convert.ToDecimal(DistanceTB.Text);
                decimal Time = TimeTB.Text == "" ? 0 : Convert.ToDecimal(TimeTB.Text);
                decimal Velocity = VelocityTB.Text == "" ? 0 : Convert.ToDecimal(VelocityTB.Text);

                if (Distance != 0 && DistanceDDL.SelectedValue != "m")
                    Distance = ConvertUnit(Distance, DistanceDDL.SelectedValue);

                if (Time != 0 && TimeDDL.SelectedValue != "s")
                    Time = ConvertUnit(Time, TimeDDL.SelectedValue);

                if (Velocity != 0 && VelocityDDL.SelectedValue != "m/s")
                    Velocity = ConvertUnit(Velocity, VelocityDDL.SelectedValue);

                if (Distance == 0)
                {
                    finalAnswer = GetDistance(Time, Velocity);
                    if (DistanceDDL.SelectedValue != "m")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, DistanceDDL.SelectedValue);

                    DistanceTB.Text = finalAnswer.ToString();
                }
                else if (Time == 0)
                {
                    finalAnswer = GetTime(Distance, Velocity);
                    if (TimeDDL.SelectedValue != "s")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, TimeDDL.SelectedValue);

                    TimeTB.Text = finalAnswer.ToString();
                }
                else
                {
                    finalAnswer = GetVelocity(Distance, Time);
                    if (VelocityDDL.SelectedValue != "m/s")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, VelocityDDL.SelectedValue);

                    VelocityTB.Text = finalAnswer.ToString();
                }

            }


        }
        public decimal GetVelocity(decimal Distance, decimal Time)
        {
            decimal Result = 0;

            Result = Distance / Time;

            return Result;
        }
        public decimal GetDistance(decimal Time, decimal Velocity)
        {
            decimal Result = 0;

            Result = Velocity * Time;

            return Result;
        }
        public decimal GetTime(decimal Distance, decimal Velocity)
        {
            decimal Result = 0;

            Result = Distance / Velocity;

            return Result;
        }
        public decimal ConvertUnit(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {
                case "mm": Converted = value / (decimal)1000; break;
                case "cm": Converted = value / (decimal)100; break;
                case "km": Converted = value * (decimal)1000; break;
                case "in": Converted = value / (decimal)39.37; break;
                case "ft": Converted = value / (decimal)3.281; break;
                case "mi": Converted = value * (decimal)1609.34; break;
                case "kJ": Converted = value * (decimal)1000; break;
                case "Wh": Converted = value * (decimal)3600; break;
                case "kWh": Converted = value * (decimal)3600000; break;
                case "h": Converted = value * 3600; break;
                case "km/h": Converted = value / (decimal)3.6; break;
                case "mph": Converted = value / (decimal)2.237; break;
                case "ft/s": Converted = value / (decimal)3.281; break;
                default: break;
            }

            return Converted;
        }
        public decimal ConvertFinalAnswer(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {
            
                case "mm": Converted = value * (decimal)1000; break;
                case "cm": Converted = value * (decimal)100; break;
                case "km": Converted = value / (decimal)1000; break;
                case "in": Converted = value * (decimal)39.37; break;
                case "ft": Converted = value * (decimal)3.281; break;
                case "mi": Converted = value / (decimal)1609.34; break;
                case "h": Converted = value / 3600; break;
                case "km/h": Converted = value * (decimal)3.6; break;
                case "mph": Converted = value * (decimal)2.237; break;
                case "ft/s": Converted = value * (decimal)3.281; break;
                default: break;
            }

            return Converted;
        }
    }
}