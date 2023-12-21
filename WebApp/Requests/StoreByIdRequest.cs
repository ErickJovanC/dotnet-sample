using System.ComponentModel.DataAnnotations;

namespace DotNetLocalDb.WebApp.Requests;
public class StoreByIdRequest
{
    [Required]
    public int[] StoreIds {get; set;}
}