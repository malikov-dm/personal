public IEnumerable<string> GetSystemLink()
{
    yield return Environment.GetEnvironmentVariable("SYSTEM_LINK");
    yield return _config.GetValue<string>("SystemLink");
    yield return "http://localhost:7000/";
}