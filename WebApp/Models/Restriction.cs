namespace DotNetLocalDb.WebApp.Models;

public class Restriction
{
    public int EntityId {get; set;}
    public DateTime ? DateStart {get; set;}
    public DateTime ? DateEnd {get; set;}
}