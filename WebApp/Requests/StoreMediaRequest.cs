using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.Requests;
public class StoreMediaRequest
{
    [Required]
    public int[] StoreIdsArray { get; set; }
    [Required]
    public int[] MediaIdsArray { get; set; }
}