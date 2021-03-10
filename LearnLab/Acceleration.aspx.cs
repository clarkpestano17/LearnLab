using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnLab
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AccelerationErrorLBL.Text = "";
        }
        protected void CalculateAcceleration_Click(object sender, EventArgs e)
        {
            int checkInput = 0;
            decimal finalAnswer = 0;
            AccelerationErrorLBL.Text = "";

            if (InitialSpeedTB.Text != "")
                checkInput += 1;
            if (FinalSpeedTB.Text != "")
                checkInput += 1;
            if (TimeTB.Text != "")
                checkInput += 1;
            if (AccelerationTB.Text != "")
                checkInput += 1;

            if (checkInput == 4)
                AccelerationErrorLBL.Text = "All field were provided!";
            else if (checkInput < 3)
                AccelerationErrorLBL.Text = "Insufficient information";
            else
            {
                decimal Speed1 = InitialSpeedTB.Text == "" ? 0 : Convert.ToDecimal(InitialSpeedTB.Text);
                decimal Speed2 = FinalSpeedTB.Text == "" ? 0 :  Convert.ToDecimal(FinalSpeedTB.Text);
                decimal Time = TimeTB.Text == "" ? 0 :  Convert.ToDecimal(TimeTB.Text);
                decimal Acceleration = AccelerationTB.Text == "" ? 0 :  Convert.ToDecimal(AccelerationTB.Text);

                if (Speed1 != 0 && InitialSpeedDDL.SelectedValue != "m/s")
                    Speed1 = ConvertUnit(Speed1, InitialSpeedDDL.SelectedValue);

                if (Speed2 != 0 && FinalSpeedDDL.SelectedValue != "m/s")
                    Speed2 = ConvertUnit(Speed2, FinalSpeedDDL.SelectedValue);

                if (Time != 0 && TimeDDL.SelectedValue != "s")
                    Time = ConvertUnit(Time, TimeDDL.SelectedValue);

                if (Acceleration != 0 && AccelerationDDL.SelectedValue != "m/s2")
                    Acceleration = ConvertUnit(Acceleration, AccelerationDDL.SelectedValue);

                if (Speed1 == 0)
                {
                    finalAnswer = GetInitialSpeed(Speed2, Time, Acceleration);
                    if (InitialSpeedDDL.SelectedValue != "m/s")                     
                        finalAnswer = ConvertFinalAnswer(finalAnswer, InitialSpeedDDL.SelectedValue);
                  
                    InitialSpeedTB.Text = finalAnswer.ToString();
                }
                else if (Speed2 == 0)
                {
                    finalAnswer = GetFinalSpeed(Speed1, Time, Acceleration);
                    if (FinalSpeedDDL.SelectedValue != "m/s")                      
                        finalAnswer = ConvertFinalAnswer(finalAnswer, FinalSpeedDDL.SelectedValue);
                   
                    FinalSpeedTB.Text = finalAnswer.ToString();
                }
                else if (Time == 0)
                {
                    finalAnswer = GetTime(Speed1, Speed2, Acceleration);
                    if (TimeDDL.SelectedValue != "s")                      
                        finalAnswer = ConvertFinalAnswer(finalAnswer, TimeDDL.SelectedValue);

                    TimeTB.Text = finalAnswer.ToString();
                }
                else
                {
                    finalAnswer = GetAcceleration(Speed1, Speed2, Time);
                    if (AccelerationDDL.SelectedValue != "m/s2")                 
                        finalAnswer = ConvertFinalAnswer(finalAnswer, AccelerationDDL.SelectedValue);
                
                    AccelerationTB.Text = finalAnswer.ToString();
                }
            }

        }
        public decimal GetAcceleration(decimal InitialSpeed, decimal FinalSpeed, decimal time)
        {
            decimal Result = 0;

            Result = (FinalSpeed - InitialSpeed) / time;

            return Result;
        }
        public decimal GetInitialSpeed(decimal FinalSpeed, decimal time, decimal acceleration)
        {
            decimal Result = 0;

            Result = FinalSpeed - (acceleration * time);

            return Result;
        }
        public decimal GetFinalSpeed(decimal InitialSpeed, decimal time, decimal acceleration)
        {
            decimal Result = 0;

            Result = (acceleration * time) + InitialSpeed;

            return Result;
        }
        public decimal GetTime(decimal InitialSpeed, decimal FinalSpeed, decimal acceleration)
        {
            decimal Result = 0;

            Result = (FinalSpeed - InitialSpeed) / acceleration;

            return Result;
        }
        public decimal ConvertUnit(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {
                case "km/h": Converted = value/(decimal)3.6;break;
                case "mph": Converted = value / (decimal)2.237; break;
                case "ft/s": Converted = value / (decimal)3.281; break;
                case "h": Converted = value * 3600; break;
                case "ft/s2": Converted = value/(decimal)3.281; break;
                default:break;
            }

            return Converted;
        }
        public decimal ConvertFinalAnswer(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {
                case "km/h": Converted = value * (decimal)3.6; break;
                case "mph": Converted = value * (decimal)2.237; break;
                case "ft/s": Converted = value * (decimal)3.281; break;
                case "h": Converted = value/3600; break;
                case "ft/s2": Converted = value * (decimal)3.281; break;
                default: break;
            }

            return Converted;
        }
    }
}