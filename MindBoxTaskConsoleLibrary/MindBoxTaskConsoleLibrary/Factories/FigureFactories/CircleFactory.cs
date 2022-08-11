using MindboxTaskConsoleLibrary.Domain.Figures;
using System;

namespace MindboxTaskConsoleLibrary.Factories
{
    public class CircleFactory : FigureFactory
    {
        private readonly double _radius;

        public CircleFactory(double radius)
        {
            _radius = radius;
        }

        public override IFigure GetArea()
        {
            double area = Math.Round(Math.PI * Math.Pow(_radius, 2),3);

            Circle circle = new Circle()
            {
                Area = area
            };

            return circle;
        }
    }
}
