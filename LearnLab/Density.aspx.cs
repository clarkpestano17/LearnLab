using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnLab
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DensityErrorLBL.Text = "";
        }
        
        protected void CalculateDensity_Click(object sender, EventArgs e)
        {
            int checkInput = 0;
            decimal finalAnswer = 0;
            DensityErrorLBL.Text = "";

            if (MassTB.Text != "")
                checkInput += 1;
            if (VolumeTB.Text != "")
                checkInput += 1;
            if (DensityTB.Text != "")
                checkInput += 1;           

            if (checkInput == 3)
                DensityErrorLBL.Text = "All field were provided!";
            else if (checkInput < 2)
                DensityErrorLBL.Text = "Insufficient information";
            else
            {
                decimal Mass = MassTB.Text == "" ? 0 : Convert.ToDecimal(MassTB.Text);
                decimal Volume = VolumeTB.Text == "" ? 0 : Convert.ToDecimal(VolumeTB.Text);
                decimal Density = DensityTB.Text == "" ? 0 : Convert.ToDecimal(DensityTB.Text);

                if (Mass != 0 && MassDDL.SelectedValue != "kg")
                    Mass = ConvertUnit(Mass, MassDDL.SelectedValue);

                if (Volume != 0 && VolumeDDL.SelectedValue != "m3")
                    Volume = ConvertUnit(Volume, VolumeDDL.SelectedValue);

                if (Density != 0 && DensityDDL.SelectedValue != "kg/m3")
                    Density = ConvertUnit(Density, DensityDDL.SelectedValue);

                if (Mass == 0)
                {
                    finalAnswer = GetMass(Volume, Density);
                    if (MassDDL.SelectedValue != "kg")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, MassDDL.SelectedValue);

                    MassTB.Text = finalAnswer.ToString();
                }
                else if (Volume == 0)
                {
                    finalAnswer = GetVolume(Mass, Density);
                    if (VolumeDDL.SelectedValue != "m3")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, VolumeDDL.SelectedValue);

                    VolumeTB.Text = finalAnswer.ToString();
                }
                else
                {
                    finalAnswer = GetDensity(Mass, Volume);
                    if (DensityDDL.SelectedValue != "kg/m3")
                        finalAnswer = ConvertFinalAnswer(finalAnswer, DensityDDL.SelectedValue);

                    DensityTB.Text = finalAnswer.ToString();
                }
              
            }


        }
        public decimal GetDensity(decimal Mass, decimal Volume)
        {
            decimal Result = 0;

            Result = Mass/Volume;

            return Result;
        }
        public decimal GetMass(decimal Volume, decimal Density)
        {
            decimal Result = 0;

            Result = Volume * Density;

            return Result;
        }
        public decimal GetVolume(decimal Mass, decimal Density)
        {
            decimal Result = 0;

            Result = Mass/Density;

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
                case "cm3": Converted = value / (decimal)1000000; break;
                case "cu in": Converted = value / (decimal)61024; break;
                case "cu ft": Converted = value / (decimal)35.315; break;
                case "L": Converted = value / (decimal)1000; break;
                case "kg/L": Converted = value * (decimal)1000; break;
                case "lb/cu in": Converted = value * (decimal)27680; break;
                case "lb/cu ft": Converted = value * (decimal)16.018; break;
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
                case "cm3": Converted = value * (decimal)1000000; break;
                case "cu in": Converted = value * (decimal)61024; break;
                case "cu ft": Converted = value * (decimal)35.315; break;
                case "L": Converted = value * (decimal)1000; break;
                case "kg/L": Converted = value / (decimal)1000; break;
                case "lb/cu in": Converted = value / (decimal)27680; break;
                case "lb/cu ft": Converted = value / (decimal)16.018; break;
                default: break;
            }

            return Converted;
        }
    }
}