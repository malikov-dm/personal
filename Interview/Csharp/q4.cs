
public void Example()
{
    try
    {

    }
    catch (Exception ex)
    {
        // логирование
        _logger.Error(ex);
        throw;
    }



    try
    {

    }
    catch (Exception ex)
    {
        // логирование
        _logger.Error(ex);
        throw ex;
    }
}

public void Test()
{
    throw new NotImplementedException();
}