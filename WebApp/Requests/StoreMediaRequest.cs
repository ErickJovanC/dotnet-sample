using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.Requests;
public class StoreMediaRequest
{
    [Required]
    public int[] StoreIds { get; set; }
    [Required]
    public int[] MediaIds { get; set; }
}