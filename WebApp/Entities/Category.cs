using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("category", Schema = "media")]

public class Category
{
    [Key, Column("category_id")]
    public int CategoryId {get; set;}

    [Required, Column("name")]
    public string Name {get; set;}

    [Column("description")]
    public string ? Description {get; set;}

    [Column("active")]
    bool Active {get; set;}
}