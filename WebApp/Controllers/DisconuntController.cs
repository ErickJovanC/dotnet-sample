using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.DTOs;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/discount")]
[ApiController]
public class DiscountController : ControllerBase
{
    private readonly IDiscountService discountService;

    public DiscountController(IDiscountService discountService)
    {
        this.discountService = discountService;
    }

    [HttpPost]
    public ActionResult CreateDiscount([FromBody] DiscountDTO discountDTO)
    {
        discountService.CreateDiscount(discountDTO);
        return Ok();
    }

    [HttpPost, Route("validation")]
    public ActionResult AddValidation([FromBody] DiscountValidationDTO discountValidationDTO)
    {
        discountService.AddValidationToDiscount(discountValidationDTO);
        return Ok();
    }

    [HttpPost, Route("entity")]
    public ActionResult AddEntity([FromBody] DiscountEntityDTO discountEntityDTO)
    {
        discountService.AddEntityToDiscount(discountEntityDTO);
        return Ok();
    }
}