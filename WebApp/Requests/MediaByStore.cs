using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.Requests;
public class MediaByStore
{
    [Required]
    public int[] StoreIds {get; set;}
}