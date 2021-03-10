using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnLab
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ForceErrorLBL.Text = "";
        }
        protected void CalculateForce_Click(object sender, EventArgs e)
        {
            int checkInput = 0;
            decimal finalAnswer = 0;
            ForceErrorLBL.Text = "";

            if (MassTB.Text != "")
                checkInput += 1;
            if (AccelerationTB.Text != "")
                checkInput += 1;
            if (ForceTB.Text != "")
                checkInput += 1;

            if (checkInput == 3)
                ForceErrorLBL.Text = "All field were provided!";
            else if (checkInput < 2)
                ForceErrorLBL.Text = "Insufficient information";
            else
            {
                decimal Mass = MassTB.Text == "" ? 0 : Convert.ToDecimal(MassTB.Text);
                decimal Acceleration = AccelerationTB.Text == "" ? 0 : Convert.ToDecimal(AccelerationTB.Text);
                decimal Force = ForceTB.Text == "" ? 0 : Convert.ToDecimal(ForceTB.Text);

                if (Mass != 0 && MassDDL.SelectedValue != "kg")
                    Mass = ConvertUnit(Mass, MassDDL.SelectedValue);

                if (Acceleration != 0 && AccelerationDDL.SelectedValue != "m/s2")
                    Acceleration = ConvertUnit(Acceleration, AccelerationDDL.SelectedValue);

                if (Force != 0 && ForceDDL.SelectedValue != "N")
                    Force = ConvertUnit(Force, ForceDDL.SelectedValue);

                if (Mass == 0)
                {
                    finalAnswer = GetMass(Acceleration, Force);
                    if (MassDDL.SelectedValue != "kg")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, MassDDL.SelectedValue);

                    MassTB.Text = finalAnswer.ToString();
                }
                else if (Acceleration == 0)
                {
                    finalAnswer = GetAcceleration(Mass, Force);
                    if (AccelerationDDL.SelectedValue != "m/s2")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, AccelerationDDL.SelectedValue);

                    AccelerationTB.Text = finalAnswer.ToString();
                }
                else
                {
                    finalAnswer = GetForce(Mass, Acceleration);
                    if (ForceDDL.SelectedValue != "N")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, ForceDDL.SelectedValue);

                    ForceTB.Text = finalAnswer.ToString();
                }

            }


        }
        public decimal GetForce(decimal Mass, decimal Acceleration)
        {
            decimal Result = 0;

            Result = Mass * Acceleration;

            return Result;
        }
        public decimal GetMass(decimal Acceleration, decimal Force)
        {
            decimal Result = 0;

            Result = Force/Acceleration;

            return Result;
        }
        public decimal GetAcceleration(decimal Mass, decimal Force)
        {
            decimal Result = 0;

            Result = Force/Mass;

            return Result;
        }
        public decimal ConvertUnit(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {
                case "mg": Converted = value / (decimal)1000000; break;
                case "g": Converted = value / (decimal)1000; break;
                case "lb": Converted = value / (decimal)2.205; break;
                case "ft/s2": Converted = value / (decimal)3.281; break;
                case "kN": Converted = value * (decimal)1000; break;
                case "MN": Converted = value * (decimal)1000000; break;
                default: break;
            }

            return Converted;
        }
        public decimal ConvertFinalAnswer(decimal value, string parameter)
        {
            decimal Converted = 0;

            switch (parameter)
            {

                case "mg": Converted = value * (decimal)1000000; break;
                case "g": Converted = value * (decimal)1000; break;
                case "lb": Converted = value * (decimal)2.205; break;
                case "ft/s2": Converted = value * (decimal)3.281; break;
                case "kN": Converted = value / (decimal)1000; break;
                case "MN": Converted = value / (decimal)1000000; break;
                default: break;
            }

            return Converted;
        }
    }
}