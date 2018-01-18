using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SampleChart.Models
{
    public class ChartDataDTO
    {
        public int Id { get; set; }
        public string Date { get; set; }
        public decimal OfferPrice { get; set; }
        public decimal BidPrice { get; set; }
        public decimal EffectiveYield { get; set; }
    }
}