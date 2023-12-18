namespace DotNetLocalDb.WebApp.Models;

public class StoreMediaDTO
{
    public int StoreMediaId {get; set;}
    public int StoreId {get; set;}
    public string StoreName {get; set;}
    public int MediaId {get; set;}
    public string MediaName {get; set;}
    public int Qty {get; set;}
    public int MinimumUnits {get; set;}
    public bool IsByBlock {get; set;}
    public decimal Price {get; set;}
}