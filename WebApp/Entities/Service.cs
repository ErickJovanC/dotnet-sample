using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DotNetLocalDb.WebApp.Entities;

[Table("service", Schema = "services")]

public class Service
{
    [Key, Column("service_id")]
    public int ServiceItemId {get; set;}

    [Required, Column("store_media_id")]
    public int StoreMediaId {get; set;}

    [Required, Column("quotation_id")]
    public int QuotationId {get; set;}

    [Required, Column("qty_selected")]
    public int QtySelected {get; set;}

    [Required, Column("date_start")]
    public DateTime DateStart {get; set;}

    [Required, Column("date_end")]
    public DateTime DateEnd {get; set;}

    [Column("is_divisible")]
    public bool IsDivisible {get; set;}
}