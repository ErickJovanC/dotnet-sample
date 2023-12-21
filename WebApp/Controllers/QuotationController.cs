using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.DTOs;
using DotNetLocalDb.WebApp.Requests;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/quotation")]
[ApiController]
public class QuotationController : ControllerBase
{
    private readonly IQuotationService quotationService;

    public QuotationController(IQuotationService quotationService)
    {
        this.quotationService = quotationService;
    }

    [HttpPost]
    public void Create(QuotationDTO quatationDTO)
    {
        quotationService.CreateQuotation(quatationDTO);
    }

    [HttpPost("get-media")]
    public ActionResult GetMediaByStoreIds([FromBody] StoreByIdRequest storesIds)
    {
        var data = quotationService.GetMediaAvailables(storesIds.StoreIds);
        return Ok(data);
    }
}