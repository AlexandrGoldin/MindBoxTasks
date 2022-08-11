using MindboxTaskConsoleLibrary.Domain.Figures;
using MindboxTaskConsoleLibrary.Factories;
using Xunit;

namespace MindBoxTaskConsoleLibrary.xUnitTests
{
    public class CircleFactoryTests
    {
        private readonly double _r = 4;

        [Fact]
        public void GetArea_return_CircleFactory_NotNull()
        {
            //Arrange
            CircleFactory circleFactory = new CircleFactory(_r);

            // Act
            IFigure figure = circleFactory.GetArea();

            //Assert
            Assert.NotNull(figure);
        }

        [Fact]
        public void GetArea_return_circleFactory_name_area_Equal()
        {
            //Arrange
            var circleFactory = new CircleFactory(_r);
            const string name = "Circle";
            const double area = 50.265; 

            //Act
            IFigure sut = circleFactory.GetArea();
            var actualGetArea = sut.GetArea();
            var actualName = sut.Name;

            Triangle triangle = new Triangle()
            {
                _name = name,
                Area = area
            };
            var expectedArea = triangle.Area;
            var expectedName = triangle._name;

            //Assert
            Assert.Equal(expectedArea, actualGetArea);
            Assert.Equal(expectedName, actualName);
        }
    }
}
