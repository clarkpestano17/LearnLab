using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnLab
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            PowerErrorLBL.Text = "";
        }
        protected void CalculatePower_Click(object sender, EventArgs e)
        {
            int checkInput = 0;
            decimal finalAnswer = 0;
            PowerErrorLBL.Text = "";

            if (WorkTB.Text != "")
                checkInput += 1;
            if (TimeTB.Text != "")
                checkInput += 1;
            if (PowerTB.Text != "")
                checkInput += 1;

            if (checkInput == 3)
                PowerErrorLBL.Text = "All field were provided!";
            else if (checkInput < 2)
                PowerErrorLBL.Text = "Insufficient information";
            else
            {
                decimal Work = WorkTB.Text == "" ? 0 : Convert.ToDecimal(WorkTB.Text);
                decimal Time = TimeTB.Text == "" ? 0 : Convert.ToDecimal(TimeTB.Text);
                decimal Power = PowerTB.Text == "" ? 0 : Convert.ToDecimal(PowerTB.Text);

                if (Work != 0 && WorkDDL.SelectedValue != "J")
                    Work = ConvertUnit(Work, WorkDDL.SelectedValue);

                if (Time != 0 && TimeDDL.SelectedValue != "s")
                    Time = ConvertUnit(Time, TimeDDL.SelectedValue);

                if (Power != 0 && PowerDDL.SelectedValue != "W")
                    Power = ConvertUnit(Power, PowerDDL.SelectedValue);

                if (Work == 0)
                {
                    finalAnswer = GetWork(Time, Power);
                    if (WorkDDL.SelectedValue != "J")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, WorkDDL.SelectedValue);

                    WorkTB.Text = finalAnswer.ToString();
                }
                else if (Time == 0)
                {
                    finalAnswer = GetTime(Work, Power);
                    if (TimeDDL.SelectedValue != "s")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, TimeDDL.SelectedValue);

                    TimeTB.Text = finalAnswer.ToString();
                }
                else
                {
                    finalAnswer = GetPower(Work, Time);
                    if (PowerDDL.SelectedValue != "W")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, PowerDDL.SelectedValue);

                    PowerTB.Text = finalAnswer.ToString();
                }

            }


        }
        public decimal GetPower(decimal Work, decimal Time)
        {
            decimal Result = 0;

            Result = Work / Time;

            return Result;
        }
        public decimal GetWork(decimal Time, decimal Power)
        {
            decimal Result = 0;

            Result = Time * Power;

            return Result;
        }
        public decimal GetTime(decimal Work, decimal Power)
        {
            decimal Result = 0;

            Result = Work / Power;

            return Result;
        }
        public decimal ConvertUnit(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {
                case "kJ": Converted = value * (decimal)1000; break;
                case "Wh": Converted = value * (decimal)3600; break;
                case "kWh": Converted = value * (decimal)3600000; break;
                case "h": Converted = value * (decimal)3600; break;
                case "mW": Converted = value / (decimal)1000; break;
                case "kW": Converted = value * (decimal)1000; break;
                case "MW": Converted = value * (decimal)1000000; break;               
                default: break;
            }

            return Converted;
        }
        public decimal ConvertFinalAnswer(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {

                case "kJ": Converted = value / (decimal)1000; break;
                case "Wh": Converted = value / (decimal)3600; break;
                case "kWh": Converted = value / (decimal)3600000; break;
                case "h": Converted = value / (decimal)3600; break;
                case "mW": Converted = value * (decimal)1000; break;
                case "kW": Converted = value / (decimal)1000; break;
                case "MW": Converted = value / (decimal)1000000; break;
                default: break;
            }

            return Converted;
        }
    }
}