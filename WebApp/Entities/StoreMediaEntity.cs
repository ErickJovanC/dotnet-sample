using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

public class StoreMediaEntity
{
    [Key]
    public int StoreMediaId {get; set;}

    [Column("store_id")]
    public int StoreId {get; set;}

    [Column("media_id")]
    public int MediaId {get; set;}

    [Column("qty")]
    public int Qty {get; set;}
    
    [Column("is_active")]
    public int IsActive {get; set;}

    [Required]
    public List<StoreEntity> Stores {get; set;}
    public List<MediaEntity> Medias {get; set;}
}