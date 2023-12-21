using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.DTOs;

public class TenantDTO
{
    [Required]
    public string Name {get; set;}
}