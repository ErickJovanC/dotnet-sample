using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.DTOs;

public class QuotationDTO
{
    [Required]
    public string Name {get; set;}

    [Required]
    public int TenantId {get; set;}

    [Required]
    public int QuotationStatusId {get; set;}
    public int AgencyId {get; set;}

    public int BrandId {get; set;}
    public float Discount {get; set;}
    public float DateStart {get; set;}
    public float DateEnd {get; set;}
}