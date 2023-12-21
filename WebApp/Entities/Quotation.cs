using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("quotations", Schema = "quotation")]

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

    [Column("doscuount")]
    public float Discount {get; set;}
    [Column("date_start")]
    public float DateStart {get; set;}
    
    [Column("date_end")]
    public float DateEnd {get; set;}
}