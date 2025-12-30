using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NFiestas
    {
        public string FistasDisponible()
        {
            string fiestaSelect = string.Empty;

            DateTime hoy = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd"));

            DateTime newYear = new DateTime(hoy.Year, 1, 1);
            DateTime newYearIni = newYear.AddDays(-6);
            DateTime newYearFin = newYear.AddDays(1);

            DateTime valentine = new DateTime(hoy.Year, 2, 14);
            DateTime valentineIni = valentine.AddDays(-20);
            DateTime valentineFin = valentine.AddDays(1);

            DateTime patrick = new DateTime(hoy.Year, 3, 17);
            DateTime patrickIni = patrick.AddDays(-20);
            DateTime patrickFin = patrick.AddDays(1);

            DateTime independence = new DateTime(hoy.Year, 7, 4);
            DateTime independenceIni = independence.AddDays(-20);
            DateTime independenceFin = independence.AddDays(1);

            DateTime fiestaPatrias = new DateTime(hoy.Year, 9, 18);
            DateTime fiestaPatriasIni = fiestaPatrias.AddDays(-20);
            DateTime fiestaPatriasFin = fiestaPatrias.AddDays(12);

            DateTime halloween = new DateTime(hoy.Year, 11, 1);
            DateTime halloweenIni = halloween.AddDays(-20);
            DateTime halloweenFin = halloween.AddDays(1);

            DateTime thanksgiving = new DateTime(hoy.Year, 11, 28);
            DateTime thanksgivingIni = thanksgiving.AddDays(-20);
            DateTime thanksgivingFin = thanksgiving.AddDays(1);
                   

            DateTime christmas = new DateTime(hoy.Year, 12, 24);
            DateTime christmasIni = christmas.AddDays(-20);
            DateTime christmasFin = christmas.AddDays(1);

            if (hoy >= newYearIni && hoy <= newYearFin)
            {
                fiestaSelect = "new year";
            }
            
            if (hoy >= patrickIni && hoy <= patrickFin)
            {
                fiestaSelect = "Patricks";
            }

            if (hoy >= independenceIni && hoy <= independenceFin)
            {
                fiestaSelect = "independence";
            }

            if (hoy >= fiestaPatriasIni && hoy <= fiestaPatriasFin)
            {
                fiestaSelect = "18 sep";
            }

            if (hoy >= thanksgivingIni && hoy <= thanksgivingFin)
            {
                fiestaSelect = "thanksgiving";
            }

            if (hoy >= halloweenIni && hoy <= halloweenFin)
            {
                fiestaSelect = "halloween";
            }

            if (hoy >= christmasIni && hoy <= christmasFin)
            {
                fiestaSelect = "navidad";
            }
            if (hoy >= valentineIni && hoy <= valentineFin)
            {
                fiestaSelect = "valentin";
            }

            return fiestaSelect;
        }
    }
}
