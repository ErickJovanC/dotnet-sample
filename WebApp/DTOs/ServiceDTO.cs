using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.DTOs;

public class ServiceDTO
{
    [Required]
    public int StoreMediaId {get; set;}

    [Required]
    public int QuotationId {get; set;}

    [Required]
    public int QtySelected {get; set;}

    [Required]
    public DateOnly DateStart {get; set;}

    [Required]
    public DateTime DateEnd {get; set;}
    public bool IsDivisible {get; set;} = false;
}