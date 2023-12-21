using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.DTOs;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;

namespace DotNetLocalDb.WebApp.Services;

public class QuotationService : IQuotationService
{
    private readonly DataDbContext context;

    public QuotationService(DataDbContext context)
    {
        this.context = context;
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
}