var choiceListLength = ds_list_size(choiceList);

if (choiceListLength > 0)
{
    if (mouse_wheel_up() && lowerPos - 1 >= 0)
    {
		lowerPos = lowerPos - 1;
        upperPos = upperPos - 1;
    }
    else
    if (mouse_wheel_down() && upperPos + 1 < choiceListLength)
    {
        upperPos = upperPos + 1;
        lowerPos = lowerPos + 1;
    }
}
