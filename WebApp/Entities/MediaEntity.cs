using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("media", Schema = "media")]

public class MediaEntity
{
    [Key, Column("media_id")]
    public int MediaId {get; set;}

    [Column("category_id")]
    public int MediaCategoryId {get; set;}

    [Column("name")]
    public string ? Name {get; set;}

    [Column("description")]
    public string ? Description {get; set;}

    [Required, Column("cost")]
    public decimal Cost {get; set;}

    [Required, Column("price")]
    public decimal Price {get; set;}

    [Column("minimum_units")]
    public int MinimumUnits {get; set;}

    [Column("is_countable")]
    public bool IsCountable {get; set;}

    [Column("is_active")]
    public bool IsActive {get; set;}
}