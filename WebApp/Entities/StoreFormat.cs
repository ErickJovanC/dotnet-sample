using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("store_format", Schema = "stores")]
public class StoreFormat
{
    [Key, Column("store_format_id")]
    public int StoreFormatId {get; set;}

    [Column("name")]
    public string Name {get; set;}
    
    [Column("description")]
    public string ? Description {get; set;}
}