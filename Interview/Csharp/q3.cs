
[HttpGet]
public IActionResult Create()
{
    // тело
    return Ok();
}

[HttpPost]
public IActionResult Create([FromForm] CustomerModel customerModel)
{
    // тело
    return Ok();
}

[HttpPost]
public IActionResult Create([FromForm] CustomerModel customerModel, int id)
{
    // тело
    return Ok();
}