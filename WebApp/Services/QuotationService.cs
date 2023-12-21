using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.DTOs;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace DotNetLocalDb.WebApp.Services;

public class QuotationService : IQuotationService
{
    private readonly DataDbContext context;

    public QuotationService(DataDbContext context)
    {
        this.context = context;
    }

    public List<Quotation> GetAllQuotation()
    {
        return context.Quotation.ToList();
    }

    public void CreateQuotation(QuotationDTO quotationDTO)
    {
        Quotation quotation = new()
        {
            Name = quotationDTO.Name,
            TenantId = quotationDTO.TenantId,
            QuotationStatusId = 1,
            // AgencyId = quotationDTO.AgencyId,
            BrandId = quotationDTO.BrandId,
            // Discount = quotationDTO.Discount ?? f0,
            DateStart = quotationDTO.DateStart,
            DateEnd = quotationDTO.DateEnd
        };
        
        context.Quotation.Add(quotation);
        context.SaveChanges();
    }

    public List<MediaEntity> GetMediaAvailables(int[] storeIds)
    {
        var storeMediaAvaibles = context.StoreMedia
            .Where(sma => storeIds.Contains(sma.StoreId)
                && sma.IsAvailable == true)
            .Select(sma => sma.MediaId);

        Console.WriteLine(storeMediaAvaibles);

        List<MediaEntity> media = context.Media
            .Where(m => storeMediaAvaibles.Contains(m.MediaId)
                && m.IsActive == true)
            .ToList();

        return media;
    }

    public List<StoreMediaDTO> GetStoreMedia(int[] storeIds, int[] mediaIds)
    {
        List<StoreMedia> storeMedia = context.StoreMedia
            .Where(sm => storeIds.Contains(sm.StoreId)
                && mediaIds.Contains(sm.MediaId)
                && sm.IsAvailable == true)
            .Include(sm => sm.Media)
            .Include(sm => sm.Store)
            .ToList();

        List<StoreMediaDTO> storeMediaList = new List<StoreMediaDTO>();

        foreach (StoreMedia item in storeMedia)
        {
            storeMediaList.Add(new StoreMediaDTO{
                StoreMediaId = item.StoreMediaId,
                StoreId = item.StoreId,
                StoreName = item.Store.Name,
                MediaId = item.MediaId,
                MediaName = item.Media.Name,
                Qty = item.Qty,
                MinimumUnits = item.MinimumUnits,
                IsByBlock = item.IsByBlocks,
                Price = item.Price
            });
        }

        return storeMediaList;
    }
}