namespace DotNetLocalDb.WebApp.DTOs;

public class DiscountDTO
{
    public float Percentage {get; set;}
    public DateTime ? DateStart {get; set;}
    public DateTime ? DateEnd {get; set;}
    public string ? Name {get; set;}
}