namespace DotNetLocalDb.WebApp.Models;

public class Media
{
    public int MediaCategoryId {get; set;}
    public string ? Name {get; set;}
    public string ? Description {get; set;}
    public decimal Cost {get; set;}
    public decimal Price {get; set;}
    public int MinimumUnits {get; set;}
    public bool IsCountable {get; set;}
    public bool IsActive {get; set;}
}