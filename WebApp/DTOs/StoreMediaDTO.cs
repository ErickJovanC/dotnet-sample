namespace DotNetLocalDb.WebApp.Models;

public class StoreMediaDTO
{
    public int StoreId {get; set;}
    public int MediaId {get; set;}
    public int Qty {get; set;}
    public bool IsByBlocks {get; set;}
    public bool IsAvailable {get; set;}
}