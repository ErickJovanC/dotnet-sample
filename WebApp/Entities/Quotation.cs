using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("quotation", Schema = "quotations")]

public class Quotation
{
    [Key, Column("quotation_id")]
    public int QuotationId {get; set;}

    [Required, Column("name")]
    public string Name {get; set;}

    [Required, Column("tenant_id")]
    public int TenantId {get; set;}

    [Required, Column("quotation_status_id")]
    public int QuotationStatusId {get; set;}

    [Column("agency_id")]
    public int AgencyId {get; set;}

    [Column("brand_id")]
    public int BrandId {get; set;}

    [Column("discount")]
    public float Discount {get; set;}

    [Required, Column("date_start")]
    public DateTime DateStart {get; set;}
    
    [Required, Column("date_end")]
    public DateTime DateEnd {get; set;}
}