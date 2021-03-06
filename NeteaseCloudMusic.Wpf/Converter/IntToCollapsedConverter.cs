using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace NeteaseCloudMusic.Wpf.Converter
{
    public class IntToCollapsedConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return (int)value > 0 ? Visibility.Collapsed : Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
