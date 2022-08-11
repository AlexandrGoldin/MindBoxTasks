
namespace MindboxTaskConsoleLibrary.Domain.Figures
{
    public class Circle : IFigure
    {
        private readonly string _name;

        public Circle()
        {
            _name = "Circle";
        }

        public string Name => _name;
        public double Area { get; set; }
        public double Radius { get; set; }

        public double GetArea() => Area;

    }
}
