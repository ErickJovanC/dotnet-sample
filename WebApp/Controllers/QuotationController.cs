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
    private readonly IServiceService serviceService;

    public QuotationController(IQuotationService quotationService, IServiceService serviceService)
    {
        this.quotationService = quotationService;
        this.serviceService = serviceService;
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

    [HttpPost("get-store-media")]
    public ActionResult GetStoreMedia(StoreMediaRequest request)
    {
        List<StoreMediaDTO> storeMedia = quotationService.GetStoreMedia(request.StoreIds, request.MediaIds);
        return Ok(storeMedia);
    }

    [HttpPost("service")]
    public ActionResult CreateService(ServiceDTO serviceDTO)
    {
        serviceService.CreateService(serviceDTO);
        return Ok();
    }
}