using System;
using System.Globalization;
using System.Windows.Data;

namespace NeteaseCloudMusic.Wpf.Converter
{
    public class StringToUriConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return (string.IsNullOrEmpty(value as string)) ? Binding.DoNothing : value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
