using MindboxTaskConsoleLibrary.Domain.Figures;
using MindboxTaskConsoleLibrary.Factories;
using MindboxTaskConsoleLibrary.Factories.FigureFactories;
using System;
using System.Text.RegularExpressions;

namespace MindBoxTaskConsoleLibrary
{
    public class FigureAreaCalculator
    {
        public static void InitialMethod()
        {
            Console.WriteLine(">>> Welcom to Area Calculator <<<");

            Console.WriteLine("> Enter the figure typ: ");

            Console.WriteLine("> T - Triangle");
            Console.WriteLine("> C - Circle");
            Console.WriteLine("> P - Poligon");

            string shapeFigure = Console.ReadLine();

            FigureFactory factory = GetFactory(shapeFigure);

            if (factory == null)
            {
                Console.WriteLine(" - Incorrect input! -");
            }
            else
            {
                IFigure figure = factory.GetArea();

                Console.WriteLine($"\tThe area of the figure: {figure.Name}" +
                      $"\tis: {figure.GetArea()}");
            }
        }

        public static FigureFactory GetFactory(string shapeFigure)
        {
            switch (shapeFigure.ToLower())
            {
                case "t":
                    double A, B, C;
                    Console.WriteLine(">Enter the length of side A: ");
                    var str3 = Console.ReadLine();
                    int value;
                    if (!int.TryParse(str3, out value)||int.Parse(str3)<=0)
                    {
                        Console.WriteLine(" - Incorrect input! -");
                        return null;
                    }
                    A = Convert.ToDouble(str3);

                    Console.WriteLine(">Enter the length of side B: ");
                    var str4 = Console.ReadLine();
                    if (!int.TryParse(str4, out value) || int.Parse(str4)<=0)
                    {
                        Console.WriteLine(" - Incorrect input! -");
                        return null;
                    }
                    B = Convert.ToDouble(str4);

                    Console.WriteLine(">Enter the length of side C: ");

                    var str5 = Console.ReadLine();
                    if (!int.TryParse(str5, out value) || int.Parse(str5) <= 0)
                        {
                        Console.WriteLine(" - Incorrect input! -");
                        return null;
                    }

                    C = Convert.ToDouble(str5);

                    if ((A * A + B * B == C * C) || (A * A + C * C == B * B) || (C * C + B * B == A * A))
                    {
                        RightTriangleFactory rightTriangleFactory = new RightTriangleFactory(A, B, C);
                        return rightTriangleFactory;
                    }
                    TriangleFactory triangleFactory = new TriangleFactory(A, B, C);
                    return triangleFactory;
                case "c":
                    double R;
                    Console.WriteLine(">Enter the radius of the circle R: ");

                    var str6 = Console.ReadLine();
                    if (!int.TryParse(str6, out value) || int.Parse(str6) <= 0)
                    {
                        Console.WriteLine(" - Incorrect input! -");
                        return null;
                    }
                    R = Convert.ToDouble(str6);
                    CircleFactory circleFactory = new CircleFactory(R);
                    return circleFactory;
                case "p":
                    Console.Write(">Введите количество вершин: ");
                    var str1 = Console.ReadLine();
                    //if (!int.TryParse(str1, out value) || int.Parse(str1) <= 0)
                    if (!int.TryParse(str1, out value) || int.Parse(str1) < 3)
                        {
                        Console.WriteLine(" - Incorrect input! -");
                        return null;
                    }

                    int n = int.Parse(str1);
                    int[,] coord = new int[2, n];
                    Console.WriteLine(">Кординаты вершины вводить через пробел");

                    for (int i = 0; i < n; i++)
                    {
                        Console.Write(">Введите координаты вершины {0}: ", i + 1);
                        var str2 = Console.ReadLine();
                        var input = str2.Split(' ');

                        string pattern2 = @"\d+ -?\d+";
                        if (!Regex.IsMatch(str2, pattern2, RegexOptions.IgnoreCase))
                        {
                            Console.WriteLine(" - Incorrect input! -");
                            return null;
                        }
                        else
                        {
                            coord[0, i] = int.Parse(input[0]);
                            coord[1, i] = int.Parse(input[1]);
                        }
                    }

                    PolygonFactory poligonFactory = new PolygonFactory(n, coord);

                    return poligonFactory;
                default:
                    return null;
            }
        }
    }
}
