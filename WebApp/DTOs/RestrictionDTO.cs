using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.DTOs;

public class RestrictionDTO
{
    [Required]
    public int[] EntitiesIds {get; set;}
    public DateTime ? DateStart {get; set;}
    public DateTime ? DateEnd {get; set;}
}