using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("brand", Schema = "brands")]

public class BrandEntity
{
    [Key, Column("brand_id")]
    public int BrandId {get; set;}

    [Column("advertiser_id")]
    public int AdvertiserId {get; set;}

    [Column("category_id")]
    public int CategoryId {get; set;}

    [Column("name")]
    public string ? Name {get; set;}
}