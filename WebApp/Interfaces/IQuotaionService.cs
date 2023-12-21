using DotNetLocalDb.WebApp.DTOs;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IQuotationService
{
    public void CreateQuotation(QuotationDTO quotationDTO);
    public List<MediaEntity> GetMediaStoresAvailables(int[] storeIds);
}