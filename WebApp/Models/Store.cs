namespace DotNetLocalDb.WebApp.Models;

public class Store
{
    public int StoreFormatId {get; set;}
    public int RegionId {get; set;}
    public int StateId {get; set;}
    public string? Name {get; set;}
    public string? Location {get; set;}
}