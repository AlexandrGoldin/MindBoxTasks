namespace MindboxTaskConsoleLibrary.Domain.Figures
{
    public class RightTriangle:IFigure
    {
        private readonly string _name;

        public RightTriangle()
        {
            _name = "Right Triangle";
        }

        public string Name => _name;
        public double Area { get; set; }

        public double GetArea() => Area;
    }
}
