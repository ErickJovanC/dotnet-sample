using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("discount_validation", Schema = "discounts")]

public class DiscountValidation
{
    [Column("discount_id")]
    public int DiscountId {get; set;}

    [Column("entity_id")]
    public int EntityId {get; set;}

    [Column("qty")]
    public float Qty {get; set;}
    
}