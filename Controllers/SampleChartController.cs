using SampleChart.DataModel;
using SampleChart.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SampleChart.Controllers
{
    public class SampleChartController : Controller
    {
        //create instance of datacontext
        SampleDbEntities db = new SampleDbEntities();

        // GET: SampleChart
        public ActionResult AmChartSample()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetChartData()
        {
            var model = db.Prices
                .ToList()
                .Select(m => new ChartDataDTO
                 {
                    Id=m.ID,
                    OfferPrice=m.OfferPrice.HasValue?m.OfferPrice.Value:0,
                    BidPrice= m.BidPrice.HasValue ? m.BidPrice.Value : 0,
                    EffectiveYield=m.EffectiveYield.HasValue?m.EffectiveYield.Value:0,
                    Date=m.Date.Value.ToString("yyyy-MM-dd")
                }).OrderBy(j=>j.Date).ToList();

            return Json(model.ToArray(), JsonRequestBehavior.AllowGet);
        }

    }
}