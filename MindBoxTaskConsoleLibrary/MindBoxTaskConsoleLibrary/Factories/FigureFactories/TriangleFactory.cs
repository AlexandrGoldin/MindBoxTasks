using MindboxTaskConsoleLibrary.Domain.Figures;
using System;

namespace MindboxTaskConsoleLibrary.Factories
{
    public class TriangleFactory : FigureFactory
    {
        private readonly double _sideA;
        private readonly double _sideB;
        private readonly double _sideC;

        public TriangleFactory(double sideA, double sideB, double sideC)
        {
            _sideA = sideA;
            _sideB = sideB;
            _sideC = sideC;
        }

        public override IFigure GetArea()
        {
            var p = (_sideA + _sideB + _sideC) / 2;
            double area =Math.Round( Math.Sqrt(p * (p - _sideA) * (p - _sideB) * (p - _sideC)),3);

            Triangle treangle = new Triangle()
            {
                Area = area
            };

            return treangle;
        }
    }
}
