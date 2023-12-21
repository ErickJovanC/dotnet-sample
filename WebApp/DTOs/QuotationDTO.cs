using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.DTOs;

public class QuotationDTO
{
    [Required]
    public string Name {get; set;}

    [Required]
    public int TenantId {get; set;}
    // public int AgencyId {get; set;}
    public int BrandId {get; set;}
    public float Discount {get; set;}
    public DateTime DateStart {get; set;}
    public DateTime DateEnd {get; set;}
}