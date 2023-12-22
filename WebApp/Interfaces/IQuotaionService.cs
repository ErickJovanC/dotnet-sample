using DotNetLocalDb.WebApp.DTOs;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IQuotationService
{
    public List<Quotation> GetAllQuotation();
    public Quotation GetQuotationById(int quotationId);
    public void CreateQuotation(QuotationDTO quotationDTO);
    public List<MediaEntity> GetMediaAvailables(int[] storeIds);
    public List<StoreMediaDTO> GetStoreMedia(int[] storeIds, int[] mediaIds);
}