using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("discount", Schema = "discounts")]

public class Discount
{
    [Key, Column("discount_id")]
    public int DiscountId {get; set;}
    
    [Column("percentage")]
    public float Percentage {get; set;}

    [Column("date_start")]
    public DateTime ? DateStart {get; set;}

    [Column("date_end")]
    public DateTime ? DateEnd {get; set;}

    public string ? Name {get; set;}
}